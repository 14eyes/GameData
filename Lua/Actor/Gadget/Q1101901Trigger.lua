require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1101901Trigger = class("Q1101901Trigger", GadgetActorProxy)
Q1101901Trigger.defaultAlias = "Q1101901Trigger"
local Q11019ClientConfig = require("Quest/Client/Q11019ClientConfig")

local this
local subIDs = Q11019ClientConfig.SubIDs
local npcs = Q11019ClientConfig.Npcs
local gadgets = Q11019ClientConfig.Gadgets
local datas = Q11019ClientConfig.Datas

function Q1101901Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1101901Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(76.70988, 42.60626, 35.41742, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1101901Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("11019")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1101901_N2013").pos, 0, 3, false, false)
    actorUtils.FinishQuestID(false, 1101901)
    actor:NarratorOnlyTaskByData(datas.NarratorWithId1101901, nil, 11019)
    this:DestroySelf()
end

function Q1101901Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1101901Trigger
