require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400340202Trigger = class("Q400340202Trigger", GadgetActorProxy)
Q400340202Trigger.defaultAlias = "Q400340202Trigger"
local Q40034ClientConfig = require("Quest/Client/Q40034ClientConfig")

local subIDs = Q40034ClientConfig.SubIDs
local npcs = Q40034ClientConfig.Npcs
local datas = Q40034ClientConfig.Datas

function Q400340202Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q400340202Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(16, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q400340202Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40034")
    actor:NarratorOnlyTask(datas.NarratorTable400340202, nil, "")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q40034Longer01").pos, 0, 3, true, false)
    self:DestroySelf()
end

function Q400340202Trigger:TriggerOut()
    print("TriggerOut")
end

return Q400340202Trigger
