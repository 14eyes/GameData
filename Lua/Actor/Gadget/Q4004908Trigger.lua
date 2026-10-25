require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004908Trigger = class("Q4004908Trigger", GadgetActorProxy)
Q4004908Trigger.defaultAlias = "Q4004908Trigger"
local Q40049ClientConfig = require("Quest/Client/Q40049ClientConfig")

local subIDs = Q40049ClientConfig.SubIDs
local datas = Q40049ClientConfig.Datas

function Q4004908Trigger:FuncBegin()
    print("FuncBegin")
    actorMgr:GetActor("40049"):EnablePlayerInput(true)
end

function Q4004908Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004908Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(17.0166, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004908Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40049")
    actor:EnablePlayerInput(false)
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(7, "Q4004901_tower").pos, 0, 3, false, false)
    actor:FinishQuestID(false, 4004908)
    actor:CallDelay(2.5, self.FuncBegin)
    self:DestroySelf()
end

function Q4004908Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4004908Trigger
