require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11030Trigger = class("Q11030Trigger", GadgetActorProxy)
Q11030Trigger.defaultAlias = "Q11030Trigger"
local Q11030ClientConfig = require("Quest/Client/Q11030ClientConfig")

local mainID = Q11030ClientConfig.MainID
local actorAlias = Q11030ClientConfig.ActorAlias
local subIDs = Q11030ClientConfig.SubIDs
local npcs = Q11030ClientConfig.Npcs
local datas = Q11030ClientConfig.Datas

function Q11030Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11030Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(95, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11030Trigger:TriggerIn()
    print("TriggerIn")
end

function Q11030Trigger:TriggerOut()
    local actor = actorMgr:GetActor(Q11030ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1103008) == 2 then
        actor:FinishQuestID(true, 1103008)
    end

    print("let 1103008 fail")
    self:DestroySelf()
end

return Q11030Trigger
