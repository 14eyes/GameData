require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300010Trigger = class("Q1300010Trigger", GadgetActorProxy)
Q1300010Trigger.defaultAlias = "Q1300010Trigger"
local Q13000ClientConfig = require("Quest/Client/Q13000ClientConfig")

local subIDs = Q13000ClientConfig.SubIDs
local npcs = Q13000ClientConfig.Npcs
local datas = Q13000ClientConfig.Datas

function Q1300010Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1300010Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300010Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13000"):ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("13000")
        actor:CreateQuestNpcById(1300010, npcs.Npc1050Data.id, 1)
        actor:RequestInteraction(npcs.Npc1050Data.alias)
    end, nil, nil, "", false, true)
end

function Q1300010Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1300010Trigger
