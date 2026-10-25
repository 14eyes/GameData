require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701604Trigger_3 = class("Q701604Trigger_3", GadgetActorProxy)
Q701604Trigger_3.defaultAlias = "Q701604Trigger_3"
local Q7016ClientConfig = require("Quest/Client/Q7016ClientConfig")

local this
local subIDs = Q7016ClientConfig.SubIDs
local datas = Q7016ClientConfig.Datas
local npcs = Q7016ClientConfig.Npcs
local points = Q7016ClientConfig.Points

function Q701604Trigger_3:OnPostDataPrepare()
    print("Q701604Trigger_3 - OnPostDataPrepare")
    this = self
end

function Q701604Trigger_3:OnPostComponentPrepare()
    print("Q701604Trigger_3 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7016)
end

function Q701604Trigger_3:TriggerIn()
    print("Q701604Trigger_3 - TriggerIn")
    actorMgr:GetActor("7016"):QuestNarratorTask(datas.NarratorWithId_701611, nil)
    this:DestroySelf()
end

function Q701604Trigger_3:PreTriggerIn()
    print("Q701604Trigger_3 - PreTriggerIn")
end

function Q701604Trigger_3:LightUpTriggerIn()
    print("Q701604Trigger_3 - LightUpTriggerIn")
end

function Q701604Trigger_3:TriggerOut()
    print("Q701604Trigger_3 - TriggerOut")
end

return Q701604Trigger_3
