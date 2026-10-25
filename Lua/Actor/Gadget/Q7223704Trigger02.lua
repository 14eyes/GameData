require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7223704Trigger02 = class("Q7223704Trigger02", GadgetActorProxy)
Q7223704Trigger02.defaultAlias = "Q7223704Trigger02"
local Q72237ClientConfig = require("Quest/Client/Q72237ClientConfig")

local subIDs = Q72237ClientConfig.SubIDs
local npcs = Q72237ClientConfig.Npcs
local datas = Q72237ClientConfig.Datas

function Q7223704Trigger02:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7223704Trigger02:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7223704Trigger02:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("72237")
    actor:NarratorOnlyTask(datas.NarratorTable02, nil, "Story")
    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(5, "Q7223704Pic").pos, 2, 2, true, false)
    self:DestroySelf()
end

function Q7223704Trigger02:TriggerOut()
    print("TriggerOut")
end

return Q7223704Trigger02
