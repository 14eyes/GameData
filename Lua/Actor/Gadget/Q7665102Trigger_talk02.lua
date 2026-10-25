require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7665102Trigger_talk02 = class("Q7665102Trigger_talk02", GadgetActorProxy)
Q7665102Trigger_talk02.defaultAlias = "Q7665102Trigger_talk02"
local Q76651ClientConfig = require("Quest/Client/Q76651ClientConfig")

local this
local subIDs = Q76651ClientConfig.SubIDs
local datas = Q76651ClientConfig.Datas
local npcs = Q76651ClientConfig.Npcs
local points = Q76651ClientConfig.Points

function Q7665102Trigger_talk02:OnPostDataPrepare()
    print("Q7665102Trigger_talk02 - OnPostDataPrepare")
    this = self
end

function Q7665102Trigger_talk02:OnPostComponentPrepare()
    print("Q7665102Trigger_talk02 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76651)
end

function Q7665102Trigger_talk02:TriggerIn()
    print("Q7665102Trigger_talk02 - TriggerIn")
    actorMgr:GetActor("76651"):QuestNarratorTask(datas.NarratorWithId_7665102, nil)
    actorMgr:GetActor("76651"):CreateQuestNpcById(7665102, npcs.Npc15444.id, 0, true, 3)
    actorMgr:GetActor("76651"):GetQuestNpcActor(npcs.Npc15444.alias, 76651):DoFreeStyle(1280, true, nil, true, true, false, false)
    actorMgr:GetActor("76651"):EnterSceneLookCameraByParam(datas.SceneLookCameraParams7665102)
    this:DestroySelf()
end

function Q7665102Trigger_talk02:PreTriggerIn()
    print("Q7665102Trigger_talk02 - PreTriggerIn")
end

function Q7665102Trigger_talk02:LightUpTriggerIn()
    print("Q7665102Trigger_talk02 - LightUpTriggerIn")
end

function Q7665102Trigger_talk02:TriggerOut()
    print("Q7665102Trigger_talk02 - TriggerOut")
end

return Q7665102Trigger_talk02
