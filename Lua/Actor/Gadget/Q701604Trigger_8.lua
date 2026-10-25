require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701604Trigger_8 = class("Q701604Trigger_8", GadgetActorProxy)
Q701604Trigger_8.defaultAlias = "Q701604Trigger_8"
local Q7016ClientConfig = require("Quest/Client/Q7016ClientConfig")

local this
local subIDs = Q7016ClientConfig.SubIDs
local datas = Q7016ClientConfig.Datas
local npcs = Q7016ClientConfig.Npcs
local points = Q7016ClientConfig.Points

function Q701604Trigger_8:OnPostDataPrepare()
    print("Q701604Trigger_8 - OnPostDataPrepare")
    this = self
end

function Q701604Trigger_8:OnPostComponentPrepare()
    print("Q701604Trigger_8 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7016)
end

function Q701604Trigger_8:TriggerIn()
    print("Q701604Trigger_8 - TriggerIn")
    actorMgr:GetActor("7016"):QuestNarratorTask(datas.NarratorWithId_701606, nil)
    this:DestroySelf()
end

function Q701604Trigger_8:PreTriggerIn()
    print("Q701604Trigger_8 - PreTriggerIn")
end

function Q701604Trigger_8:LightUpTriggerIn()
    print("Q701604Trigger_8 - LightUpTriggerIn")
end

function Q701604Trigger_8:TriggerOut()
    print("Q701604Trigger_8 - TriggerOut")
end

return Q701604Trigger_8
