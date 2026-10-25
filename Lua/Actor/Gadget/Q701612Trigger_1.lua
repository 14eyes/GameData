require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701612Trigger_1 = class("Q701612Trigger_1", GadgetActorProxy)
Q701612Trigger_1.defaultAlias = "Q701612Trigger_1"
local Q7016ClientConfig = require("Quest/Client/Q7016ClientConfig")

local this
local subIDs = Q7016ClientConfig.SubIDs
local datas = Q7016ClientConfig.Datas
local npcs = Q7016ClientConfig.Npcs
local points = Q7016ClientConfig.Points

function Q701612Trigger_1:OnPostDataPrepare()
    print("Q701612Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q701612Trigger_1:OnPostComponentPrepare()
    print("Q701612Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7016)
end

function Q701612Trigger_1:TriggerIn()
    print("Q701612Trigger_1 - TriggerIn")
    actorMgr:GetActor("7016"):QuestNarratorTask(datas.NarratorWithId_701613, nil)
    this:DestroySelf()
end

function Q701612Trigger_1:PreTriggerIn()
    print("Q701612Trigger_1 - PreTriggerIn")
end

function Q701612Trigger_1:LightUpTriggerIn()
    print("Q701612Trigger_1 - LightUpTriggerIn")
end

function Q701612Trigger_1:TriggerOut()
    print("Q701612Trigger_1 - TriggerOut")
end

return Q701612Trigger_1
