require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400208_ReconnectTrigger = class("Q400208_ReconnectTrigger", GadgetActorProxy)
Q400208_ReconnectTrigger.defaultAlias = "Q400208_ReconnectTrigger"
local Q4002ClientConfig = require("Quest/Client/Q4002ClientConfig")

local this
local subIDs = Q4002ClientConfig.SubIDs
local npcs = Q4002ClientConfig.Npcs
local points = Q4002ClientConfig.Points
local datas = Q4002ClientConfig.Datas

function Q400208_ReconnectTrigger:OnPostDataPrepare()
    print("[MainId: 4002][Trigger: Q400208_ReconnectTrigger] OnPostDataPrepare")
    this = self
end

function Q400208_ReconnectTrigger:OnPostComponentPrepare()
    print("[MainId: 4002][Trigger: Q400208_ReconnectTrigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(114.3879, 173.6048, 135.5799, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400208_ReconnectTrigger:TriggerIn()
    print("[MainId: 4002][Trigger: Q400208_ReconnectTrigger] TriggerIn")
    if actorMgr:GetActor("4002"):GetSubQuestState(400208) == 2 then
        actorMgr:GetActor("4002"):LevelLoadFinishSafeCall(function(arg1)
            actorMgr:GetActor("4002"):TransmitPlayerWithDialogTextByQuestId(400208, 1, datas.TransmitBlank, 1)
        end)
    end

    this:DestroySelf()
end

function Q400208_ReconnectTrigger:PreTriggerIn()
    print("[MainId: 4002][Trigger: Q400208_ReconnectTrigger] PreTriggerIn")
end

function Q400208_ReconnectTrigger:LightUpTriggerIn()
    print("[MainId: 4002][Trigger: Q400208_ReconnectTrigger] LightUpTriggerIn")
end

function Q400208_ReconnectTrigger:TriggerOut()
    print("[MainId: 4002][Trigger: Q400208_ReconnectTrigger] TriggerOut")
end

return Q400208_ReconnectTrigger
