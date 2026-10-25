require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40036Trigger2 = class("Q40036Trigger2", GadgetActorProxy)
Q40036Trigger2.defaultAlias = "Q40036Trigger2"
local Q40036ClientConfig = require("Quest/Client/Q40036ClientConfig")

local subIDs = Q40036ClientConfig.SubIDs
local npcs = Q40036ClientConfig.Npcs
local gadgets = Q40036ClientConfig.Gadgets
local datas = Q40036ClientConfig.Datas

function Q40036Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40036Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40036Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40036"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40036")
        actor:CreateQuestNpcById(4003607, npcs.Npc1016Data.id, 1)
        actor:RequestInteraction(npcs.Npc1016Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q40036Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q40036Trigger2
