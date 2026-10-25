require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402209_TransmitTrigger = class("Q402209_TransmitTrigger", GadgetActorProxy)
Q402209_TransmitTrigger.defaultAlias = "Q402209_TransmitTrigger"
local Q4022ClientConfig = require("Quest/Client/Q4022ClientConfig")

local this
local subIDs = Q4022ClientConfig.SubIDs
local npcs = Q4022ClientConfig.Npcs
local gadgets = Q4022ClientConfig.Gadgets
local points = Q4022ClientConfig.Points
local datas = Q4022ClientConfig.Datas

function Q402209_TransmitTrigger:OnPostDataPrepare()
    print("[MainId: 4022][Trigger: Q402209_TransmitTrigger] OnPostDataPrepare")
    this = self
end

function Q402209_TransmitTrigger:OnPostComponentPrepare()
    print("[MainId: 4022][Trigger: Q402209_TransmitTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402209_TransmitTrigger:TriggerIn()
    print("[MainId: 4022][Trigger: Q402209_TransmitTrigger] TriggerIn")
    actorMgr:GetActor("4022"):LevelLoadFinishSafeCall(function(arg1)
        actorMgr:GetActor("4022"):TransmitPlayerWithQuestIdByData(402209, 2, datas.TransmitData)
    end)

    this:DestroySelf()
end

function Q402209_TransmitTrigger:PreTriggerIn()
    print("[MainId: 4022][Trigger: Q402209_TransmitTrigger] PreTriggerIn")
end

function Q402209_TransmitTrigger:LightUpTriggerIn()
    print("[MainId: 4022][Trigger: Q402209_TransmitTrigger] LightUpTriggerIn")
end

function Q402209_TransmitTrigger:TriggerOut()
    print("[MainId: 4022][Trigger: Q402209_TransmitTrigger] TriggerOut")
end

return Q402209_TransmitTrigger
