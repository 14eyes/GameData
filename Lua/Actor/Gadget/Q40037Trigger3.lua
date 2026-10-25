require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40037Trigger3 = class("Q40037Trigger3", GadgetActorProxy)
Q40037Trigger3.defaultAlias = "Q40037Trigger3"
local Q40037ClientConfig = require("Quest/Client/Q40037ClientConfig")

local subIDs = Q40037ClientConfig.SubIDs
local npcs = Q40037ClientConfig.Npcs
local gadgets = Q40037ClientConfig.Gadgets
local datas = Q40037ClientConfig.Datas

function Q40037Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40037Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40037Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40037"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40037")
        actor:CreateQuestNpcById(4003712, npcs.Npc1016Data.id, 0)
        actor:RequestInteraction(npcs.Npc1016Data.alias)
        globalActor:ChangeDay24Time(21, true)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q40037Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q40037Trigger3
