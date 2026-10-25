require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10501Trigger = class("Q10501Trigger", GadgetActorProxy)
Q10501Trigger.defaultAlias = "Q10501Trigger"
local Q10501ClientConfig = require("Quest/Client/Q10501ClientConfig")

local this
local subIDs = Q10501ClientConfig.SubIDs
local npcs = Q10501ClientConfig.Npcs
local datas = Q10501ClientConfig.Datas

function Q10501Trigger:OnPostDataPrepare()
    print("[MainId: 10501][Trigger: Q10501Trigger] OnPostDataPrepare")
    this = self
end

function Q10501Trigger:OnPostComponentPrepare()
    print("[MainId: 10501][Trigger: Q10501Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q10501Trigger:TriggerIn()
    print("[MainId: 10501][Trigger: Q10501Trigger] TriggerIn")
end

function Q10501Trigger:TriggerOut()
    print("[MainId: 10501][Trigger: Q10501Trigger] TriggerOut")
    local actor = actorMgr:GetActor(Q10501ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1050108) == 2 then
        actor:FinishQuestID(true, 1050108)
    end

    print("let 1050108 fail")
    self:DestroySelf()
end

return Q10501Trigger
