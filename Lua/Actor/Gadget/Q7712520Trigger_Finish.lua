require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7712520Trigger_Finish = class("Q7712520Trigger_Finish", GadgetActorProxy)
Q7712520Trigger_Finish.defaultAlias = "Q7712520Trigger_Finish"
local Q77125ClientConfig = require("Quest/Client/Q77125ClientConfig")

local this
local subIDs = Q77125ClientConfig.SubIDs
local datas = Q77125ClientConfig.Datas
local npcs = Q77125ClientConfig.Npcs
local points = Q77125ClientConfig.Points

function Q7712520Trigger_Finish:OnPostDataPrepare()
    print("Q7712520Trigger_Finish - OnPostDataPrepare")
    this = self
end

function Q7712520Trigger_Finish:OnPostComponentPrepare()
    print("Q7712520Trigger_Finish - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77125)
end

function Q7712520Trigger_Finish:TriggerIn()
    print("Q7712520Trigger_Finish - TriggerIn")
    actorUtils.FinishQuestID(false, 7712520)
    this:DestroySelf()
end

function Q7712520Trigger_Finish:PreTriggerIn()
    print("Q7712520Trigger_Finish - PreTriggerIn")
end

function Q7712520Trigger_Finish:LightUpTriggerIn()
    print("Q7712520Trigger_Finish - LightUpTriggerIn")
end

function Q7712520Trigger_Finish:TriggerOut()
    print("Q7712520Trigger_Finish - TriggerOut")
end

return Q7712520Trigger_Finish
