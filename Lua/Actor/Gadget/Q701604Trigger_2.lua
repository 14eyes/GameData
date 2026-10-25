require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701604Trigger_2 = class("Q701604Trigger_2", GadgetActorProxy)
Q701604Trigger_2.defaultAlias = "Q701604Trigger_2"
local Q7016ClientConfig = require("Quest/Client/Q7016ClientConfig")

local this
local subIDs = Q7016ClientConfig.SubIDs
local datas = Q7016ClientConfig.Datas
local npcs = Q7016ClientConfig.Npcs
local points = Q7016ClientConfig.Points

function Q701604Trigger_2:OnPostDataPrepare()
    print("Q701604Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q701604Trigger_2:OnPostComponentPrepare()
    print("Q701604Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7016)
end

function Q701604Trigger_2:TriggerIn()
    print("Q701604Trigger_2 - TriggerIn")
    actorMgr:GetActor("7016"):QuestNarratorTask(datas.NarratorWithId_701603, nil)
    this:DestroySelf()
end

function Q701604Trigger_2:PreTriggerIn()
    print("Q701604Trigger_2 - PreTriggerIn")
end

function Q701604Trigger_2:LightUpTriggerIn()
    print("Q701604Trigger_2 - LightUpTriggerIn")
end

function Q701604Trigger_2:TriggerOut()
    print("Q701604Trigger_2 - TriggerOut")
end

return Q701604Trigger_2
