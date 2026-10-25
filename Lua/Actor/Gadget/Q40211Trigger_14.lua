require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_14 = class("Q40211Trigger_14", GadgetActorProxy)
Q40211Trigger_14.defaultAlias = "Q40211Trigger_14"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_14:OnPostDataPrepare()
    print("Q40211Trigger_14 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_14:OnPostComponentPrepare()
    print("Q40211Trigger_14 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_14:TriggerIn()
    print("Q40211Trigger_14 - TriggerIn")
    actorMgr:GetActor("40211"):QuestNarratorTask(datas.NarratorWithId_4021112, nil)
    this:DestroySelf()
end

function Q40211Trigger_14:PreTriggerIn()
    print("Q40211Trigger_14 - PreTriggerIn")
end

function Q40211Trigger_14:LightUpTriggerIn()
    print("Q40211Trigger_14 - LightUpTriggerIn")
end

function Q40211Trigger_14:TriggerOut()
    print("Q40211Trigger_14 - TriggerOut")
end

return Q40211Trigger_14
