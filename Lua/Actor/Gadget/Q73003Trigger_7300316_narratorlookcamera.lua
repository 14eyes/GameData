require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73003Trigger_7300316_narratorlookcamera = class("Q73003Trigger_7300316_narratorlookcamera", GadgetActorProxy)
Q73003Trigger_7300316_narratorlookcamera.defaultAlias = "Q73003Trigger_7300316_narratorlookcamera"
local Q73003ClientConfig = require("Quest/Client/Q73003ClientConfig")

local subIDs = Q73003ClientConfig.SubIDs
local npcs = Q73003ClientConfig.Npcs
local datas = Q73003ClientConfig.Datas

function Q73003Trigger_7300316_narratorlookcamera:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73003Trigger_7300316_narratorlookcamera:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73003Trigger_7300316_narratorlookcamera:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73003")
    actor:GetQuestNpcActor(npcs.Npc4198Data.alias, 73003)
    actor:NarratorOnlyTask(datas.NarratorTable4_ranaHint4, nil, "")
    actor:EnterSceneLookCamera({x = -1352.97, y = 153.07, z = 2837.07}, 2, 3, true, false)
    self:DestroySelf()
end

function Q73003Trigger_7300316_narratorlookcamera:TriggerOut()
    print("TriggerOut")
end

return Q73003Trigger_7300316_narratorlookcamera
