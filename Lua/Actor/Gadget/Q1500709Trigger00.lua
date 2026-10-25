require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1500709Trigger00 = class("Q1500709Trigger00", GadgetActorProxy)
Q1500709Trigger00.defaultAlias = "Q1500709Trigger00"
local Q15007ClientConfig = require("Quest/Client/Q15007ClientConfig")

local this
local subIDs = Q15007ClientConfig.SubIDs
local datas = Q15007ClientConfig.Datas
local npcs = Q15007ClientConfig.Npcs
local points = Q15007ClientConfig.Points

function Q1500709Trigger00:OnPostDataPrepare()
    print("Q1500709Trigger00 - OnPostDataPrepare")
    this = self
end

function Q1500709Trigger00:OnPostComponentPrepare()
    print("Q1500709Trigger00 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15007)
end

function Q1500709Trigger00:TriggerIn()
    print("Q1500709Trigger00 - TriggerIn")
    actorMgr:GetActor("15007"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("15007"):CreateQuestNpcById(1500709, npcs.Paimon.id, 0, false, 0)
        actorMgr:GetActor("15007"):RequestInteraction(npcs.Paimon.alias, "", true)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q1500709Trigger00:PreTriggerIn()
    print("Q1500709Trigger00 - PreTriggerIn")
end

function Q1500709Trigger00:LightUpTriggerIn()
    print("Q1500709Trigger00 - LightUpTriggerIn")
end

function Q1500709Trigger00:TriggerOut()
    print("Q1500709Trigger00 - TriggerOut")
end

return Q1500709Trigger00
