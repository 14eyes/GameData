require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger1501402 = class("tigger1501402", GadgetActorProxy)
tigger1501402.defaultAlias = "tigger1501402"
local Q15014ClientConfig = require("Quest/Client/Q15014ClientConfig")

local this
local subIDs = Q15014ClientConfig.SubIDs
local datas = Q15014ClientConfig.Datas
local npcs = Q15014ClientConfig.Npcs
local points = Q15014ClientConfig.Points

function tigger1501402:OnPostDataPrepare()
    print("tigger1501402 - OnPostDataPrepare")
    this = self
end

function tigger1501402:OnPostComponentPrepare()
    print("tigger1501402 - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15014)
end

function tigger1501402:TriggerIn()
    print("tigger1501402 - TriggerIn")
end

function tigger1501402:PreTriggerIn()
    print("tigger1501402 - PreTriggerIn")
end

function tigger1501402:LightUpTriggerIn()
    print("tigger1501402 - LightUpTriggerIn")
    actorMgr:GetActor("15014"):LevelLoadFinishSafeCall(function(arg1)
        actorMgr:GetActor("15014"):TransmitPlayerByQuestId(1501403, 1, nil, nil, nil)
    end)

    this:DestroySelf()
end

function tigger1501402:TriggerOut()
    print("tigger1501402 - TriggerOut")
end

return tigger1501402
