require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40036Trigger3 = class("Q40036Trigger3", GadgetActorProxy)
Q40036Trigger3.defaultAlias = "Q40036Trigger3"
local Q40036ClientConfig = require("Quest/Client/Q40036ClientConfig")

local subIDs = Q40036ClientConfig.SubIDs
local npcs = Q40036ClientConfig.Npcs
local gadgets = Q40036ClientConfig.Gadgets
local datas = Q40036ClientConfig.Datas

function Q40036Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40036Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40036Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40036"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40036")
        actor:CreateQuestNpcById(4003609, npcs.Npc1016Data.id, 0)
        actor:RequestInteraction(npcs.Npc1016Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q40036Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q40036Trigger3
