require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73037Trigger2_7303702 = class("Q73037Trigger2_7303702", GadgetActorProxy)
Q73037Trigger2_7303702.defaultAlias = "Q73037Trigger2_7303702"
local Q73037ClientConfig = require("Quest/Client/Q73037ClientConfig")

local subIDs = Q73037ClientConfig.SubIDs
local npcs = Q73037ClientConfig.Npcs
local datas = Q73037ClientConfig.Datas

function Q73037Trigger2_7303702:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73037Trigger2_7303702:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73037Trigger2_7303702:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73037")
    actor:NarratorOnlyTask(datas.NarratorTable2, nil, "")
    actor:EnterSceneLookCamera({x = -681.5, y = -150.3, z = 4025.9}, 0.2, 2, true, false)
    self:DestroySelf()
end

function Q73037Trigger2_7303702:TriggerOut()
    print("TriggerOut")
end

return Q73037Trigger2_7303702
