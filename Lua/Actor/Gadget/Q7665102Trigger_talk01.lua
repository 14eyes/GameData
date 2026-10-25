require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7665102Trigger_talk01 = class("Q7665102Trigger_talk01", GadgetActorProxy)
Q7665102Trigger_talk01.defaultAlias = "Q7665102Trigger_talk01"
local Q76651ClientConfig = require("Quest/Client/Q76651ClientConfig")

local this
local subIDs = Q76651ClientConfig.SubIDs
local datas = Q76651ClientConfig.Datas
local npcs = Q76651ClientConfig.Npcs
local points = Q76651ClientConfig.Points

function Q7665102Trigger_talk01:OnPostDataPrepare()
    print("Q7665102Trigger_talk01 - OnPostDataPrepare")
    this = self
end

function Q7665102Trigger_talk01:OnPostComponentPrepare()
    print("Q7665102Trigger_talk01 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76651)
end

function Q7665102Trigger_talk01:TriggerIn()
    print("Q7665102Trigger_talk01 - TriggerIn")
    actorMgr:GetActor("76651"):QuestNarratorTask(datas.NarratorWithId_7665101, nil)
    actorMgr:GetActor("76651"):EnterSceneLookCameraByParam(datas.SceneLookCameraParams7665101)
    this:DestroySelf()
end

function Q7665102Trigger_talk01:PreTriggerIn()
    print("Q7665102Trigger_talk01 - PreTriggerIn")
end

function Q7665102Trigger_talk01:LightUpTriggerIn()
    print("Q7665102Trigger_talk01 - LightUpTriggerIn")
end

function Q7665102Trigger_talk01:TriggerOut()
    print("Q7665102Trigger_talk01 - TriggerOut")
end

return Q7665102Trigger_talk01
