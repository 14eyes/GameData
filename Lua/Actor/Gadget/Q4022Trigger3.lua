require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022Trigger3 = class("Q4022Trigger3", GadgetActorProxy)
Q4022Trigger3.defaultAlias = "Q4022Trigger3"
local Q4022ClientConfig = require("Quest/Client/Q4022ClientConfig")

local this
local subIDs = Q4022ClientConfig.SubIDs
local npcs = Q4022ClientConfig.Npcs
local gadgets = Q4022ClientConfig.Gadgets
local points = Q4022ClientConfig.Points
local datas = Q4022ClientConfig.Datas

function Q4022Trigger3:OnPostDataPrepare()
    print("[MainId: 4022][Trigger: Q4022Trigger3] OnPostDataPrepare")
    this = self
end

function Q4022Trigger3:OnPostComponentPrepare()
    print("[MainId: 4022][Trigger: Q4022Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4022Trigger3:TriggerIn()
    print("[MainId: 4022][Trigger: Q4022Trigger3] TriggerIn")
    actorMgr:GetActor("4022"):LevelLoadFinishSafeCall(function(arg1)
        actorMgr:GetActor("4022"):TransmitPlayerWithQuestIdByData(402209, 2, datas.TransmitData)
    end)

    this:DestroySelf()
end

function Q4022Trigger3:PreTriggerIn()
    print("[MainId: 4022][Trigger: Q4022Trigger3] PreTriggerIn")
end

function Q4022Trigger3:LightUpTriggerIn()
    print("[MainId: 4022][Trigger: Q4022Trigger3] LightUpTriggerIn")
end

function Q4022Trigger3:TriggerOut()
    print("[MainId: 4022][Trigger: Q4022Trigger3] TriggerOut")
end

return Q4022Trigger3
