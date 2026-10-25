require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73002Trigger1_NarratorTable_RanaHint2 = class("Q73002Trigger1_NarratorTable_RanaHint2", GadgetActorProxy)
Q73002Trigger1_NarratorTable_RanaHint2.defaultAlias = "Q73002Trigger1_NarratorTable_RanaHint2"
local Q73002ClientConfig = require("Quest/Client/Q73002ClientConfig")

local subIDs = Q73002ClientConfig.SubIDs
local npcs = Q73002ClientConfig.Npcs
local datas = Q73002ClientConfig.Datas

function Q73002Trigger1_NarratorTable_RanaHint2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73002Trigger1_NarratorTable_RanaHint2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73002Trigger1_NarratorTable_RanaHint2:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73002")
    actor:NarratorOnlyTask(datas.NarratorTable_RanaHint2, nil, "")
    actor:EnterSceneLookCamera({x = -1045.486, y = 206.718, z = 2881.99}, 0.7, 3, true, true)
    self:DestroySelf()
end

function Q73002Trigger1_NarratorTable_RanaHint2:TriggerOut()
    print("TriggerOut")
end

return Q73002Trigger1_NarratorTable_RanaHint2
