require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714809Trigger_Finish = class("Q7714809Trigger_Finish", GadgetActorProxy)
Q7714809Trigger_Finish.defaultAlias = "Q7714809Trigger_Finish"
local Q77148ClientConfig = require("Quest/Client/Q77148ClientConfig")

local this
local subIDs = Q77148ClientConfig.SubIDs
local datas = Q77148ClientConfig.Datas
local npcs = Q77148ClientConfig.Npcs
local points = Q77148ClientConfig.Points

function Q7714809Trigger_Finish:OnPostDataPrepare()
    print("Q7714809Trigger_Finish - OnPostDataPrepare")
    this = self
end

function Q7714809Trigger_Finish:OnPostComponentPrepare()
    print("Q7714809Trigger_Finish - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77148)
end

function Q7714809Trigger_Finish:TriggerIn()
    print("Q7714809Trigger_Finish - TriggerIn")
    actorUtils.FinishQuestID(false, 7714809)
    this:DestroySelf()
end

function Q7714809Trigger_Finish:PreTriggerIn()
    print("Q7714809Trigger_Finish - PreTriggerIn")
end

function Q7714809Trigger_Finish:LightUpTriggerIn()
    print("Q7714809Trigger_Finish - LightUpTriggerIn")
end

function Q7714809Trigger_Finish:TriggerOut()
    print("Q7714809Trigger_Finish - TriggerOut")
end

return Q7714809Trigger_Finish
