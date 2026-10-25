require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600715Trigger_01 = class("Q600715Trigger_01", GadgetActorProxy)
Q600715Trigger_01.defaultAlias = "Q600715Trigger_01"
local Q6007ClientConfig = require("Quest/Client/Q6007ClientConfig")

local this
local subIDs = Q6007ClientConfig.SubIDs
local datas = Q6007ClientConfig.Datas
local npcs = Q6007ClientConfig.Npcs

function Q600715Trigger_01:OnPostDataPrepare()
    print("Q600715Trigger_01 - OnPostDataPrepare")
    this = self
end

function Q600715Trigger_01:OnPostComponentPrepare()
    print("Q600715Trigger_01 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6007)
end

function Q600715Trigger_01:TriggerIn()
    print("Q600715Trigger_01 - TriggerIn")
    actorMgr:GetActor("6007"):QuestNarratorTask(datas.NarratorWithId_600723, nil)
    this:DestroySelf()
end

function Q600715Trigger_01:PreTriggerIn()
    print("Q600715Trigger_01 - PreTriggerIn")
end

function Q600715Trigger_01:LightUpTriggerIn()
    print("Q600715Trigger_01 - LightUpTriggerIn")
end

function Q600715Trigger_01:TriggerOut()
    print("Q600715Trigger_01 - TriggerOut")
end

return Q600715Trigger_01
