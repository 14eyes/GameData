require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14024Trigger2 = class("Q14024Trigger2", GadgetActorProxy)
Q14024Trigger2.defaultAlias = "Q14024Trigger2"
local Q14024ClientConfig = require("Quest/Client/Q14024ClientConfig")

local this
local subIDs = Q14024ClientConfig.SubIDs
local npcs = Q14024ClientConfig.Npcs
local points = Q14024ClientConfig.Points
local datas = Q14024ClientConfig.Datas

function Q14024Trigger2:OnPostDataPrepare()
    print("[MainId: 14024][Trigger: Q14024Trigger2] OnPostDataPrepare")
    this = self
end

function Q14024Trigger2:OnPostComponentPrepare()
    print("[MainId: 14024][Trigger: Q14024Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14024)
end

function Q14024Trigger2:TriggerIn()
    print("[MainId: 14024][Trigger: Q14024Trigger2] TriggerIn")
    local actor = actorMgr:GetActor("14024")
    actor:EnterSceneLookCameraByParam(datas.SceneLookCameraParams_01)
    actor:QuestNarratorTask(datas.Narrator_1402404)
    actorUtils.FinishQuestID(false, 1402407)
    this:DestroySelf()
end

function Q14024Trigger2:PreTriggerIn()
    print("[MainId: 14024][Trigger: Q14024Trigger2] PreTriggerIn")
end

function Q14024Trigger2:LightUpTriggerIn()
    print("[MainId: 14024][Trigger: Q14024Trigger2] LightUpTriggerIn")
end

function Q14024Trigger2:TriggerOut()
    print("[MainId: 14024][Trigger: Q14024Trigger2] TriggerOut")
end

return Q14024Trigger2
