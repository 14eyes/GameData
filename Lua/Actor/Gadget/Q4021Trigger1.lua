require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4021Trigger1 = class("Q4021Trigger1", GadgetActorProxy)
Q4021Trigger1.defaultAlias = "Q4021Trigger1"
local Q4021ClientConfig = require("Quest/Client/Q4021ClientConfig")

local this
local subIDs = Q4021ClientConfig.SubIDs
local npcs = Q4021ClientConfig.Npcs
local points = Q4021ClientConfig.Points
local datas = Q4021ClientConfig.Datas

function Q4021Trigger1:OnPostDataPrepare()
    print("[MainId: 4021][Trigger: Q4021Trigger1] OnPostDataPrepare")
    this = self
end

function Q4021Trigger1:OnPostComponentPrepare()
    print("[MainId: 4021][Trigger: Q4021Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4021Trigger1:TriggerIn()
    print("[MainId: 4021][Trigger: Q4021Trigger1] TriggerIn")
    local actor = actorMgr:GetActor("4021")
    if actor:GetQuestVar(402101, 0) == 0 then
        actor:LevelLoadFinishSafeCall(function(arg1)
            actorMgr:GetActor("4021"):TransmitPlayerWithQuestIdByData(402101, 1, datas.DialogsId, function(arg1)
                actorMgr:GetActor("4021"):SetQuestVarByMainId(0, 1)
            end)
        end)
    end

    this:DestroySelf()
end

function Q4021Trigger1:PreTriggerIn()
    print("[MainId: 4021][Trigger: Q4021Trigger1] PreTriggerIn")
end

function Q4021Trigger1:LightUpTriggerIn()
    print("[MainId: 4021][Trigger: Q4021Trigger1] LightUpTriggerIn")
end

function Q4021Trigger1:TriggerOut()
    print("[MainId: 4021][Trigger: Q4021Trigger1] TriggerOut")
end

return Q4021Trigger1
