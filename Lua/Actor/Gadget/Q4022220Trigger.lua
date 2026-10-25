require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022220Trigger = class("Q4022220Trigger", GadgetActorProxy)
Q4022220Trigger.defaultAlias = "Q4022220Trigger"
local Q40222ClientConfig = require("Quest/Client/Q40222ClientConfig")

local this
local subIDs = Q40222ClientConfig.SubIDs
local datas = Q40222ClientConfig.Datas
local npcs = Q40222ClientConfig.Npcs
local points = Q40222ClientConfig.Points

function Q4022220Trigger:OnPostDataPrepare()
    print("Q4022220Trigger - OnPostDataPrepare")
    this = self
end

function Q4022220Trigger:OnPostComponentPrepare()
    print("Q4022220Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(200, 8, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40222)
end

function Q4022220Trigger:TriggerIn()
    print("Q4022220Trigger - TriggerIn")
    actorMgr:GetActor("40222"):QuestNarratorTask(datas.NarratorWithId4022220, nil)
    this:DestroySelf()
end

function Q4022220Trigger:PreTriggerIn()
    print("Q4022220Trigger - PreTriggerIn")
end

function Q4022220Trigger:LightUpTriggerIn()
    print("Q4022220Trigger - LightUpTriggerIn")
end

function Q4022220Trigger:TriggerOut()
    print("Q4022220Trigger - TriggerOut")
end

return Q4022220Trigger
