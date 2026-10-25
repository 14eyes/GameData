require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19047Trigger4 = class("Q19047Trigger4", GadgetActorProxy)
Q19047Trigger4.defaultAlias = "Q19047Trigger4"
local Q19047ClientConfig = require("Quest/Client/Q19047ClientConfig")

local subIDs = Q19047ClientConfig.SubIDs
local npcs = Q19047ClientConfig.Npcs
local datas = Q19047ClientConfig.Datas

function Q19047Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19047Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19047Trigger4:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19047"):NarratorOnlyTaskByData({narratorId = 190475101, pauseLen = 10, resumeLen = 5, tag = "StoryCut"})
    self:DestroySelf()
end

function Q19047Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q19047Trigger4
