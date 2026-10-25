require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40089RestartFollow = class("Q40089RestartFollow", GadgetActorProxy)
Q40089RestartFollow.defaultAlias = "Q40089RestartFollow"
local Q40089ClientConfig = require("Quest/Client/Q40089ClientConfig")

local this
local subIDs = Q40089ClientConfig.SubIDs
local npcs = Q40089ClientConfig.Npcs
local datas = Q40089ClientConfig.Datas

function Q40089RestartFollow:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40089RestartFollow:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40089RestartFollow:TriggerIn()
    print("TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("40089"):GetQuestNpcActor(npcs.Npc1013Data.alias):NpcFollowTaskWithParams(40089, nil, nil, nil, "", false, 0.2, 2, 1, 25, 30, 50, 3, 5)
end

function Q40089RestartFollow:TriggerOut()
    print("TriggerOut")
end

return Q40089RestartFollow
