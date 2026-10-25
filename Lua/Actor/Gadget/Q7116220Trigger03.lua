require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7116220Trigger03 = class("Q7116220Trigger03", GadgetActorProxy)
Q7116220Trigger03.defaultAlias = "Q7116220Trigger03"
local Q71162ClientConfig = require("Quest/Client/Q71162ClientConfig")

local this
local subIDs = Q71162ClientConfig.SubIDs
local datas = Q71162ClientConfig.Datas
local npcs = Q71162ClientConfig.Npcs
local points = Q71162ClientConfig.Points

function Q7116220Trigger03:OnPostDataPrepare()
    print("Q7116220Trigger03 - OnPostDataPrepare")
    this = self
end

function Q7116220Trigger03:OnPostComponentPrepare()
    print("Q7116220Trigger03 - OnPostComponentPrepare")
    this:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71162)
end

function Q7116220Trigger03:TriggerIn()
    print("Q7116220Trigger03 - TriggerIn")
    actorMgr:GetActor("71162"):ShowBlackScreen(0.5, 3, 0, nil, nil, nil, "", false, true)
    this:DestroySelf()
end

function Q7116220Trigger03:PreTriggerIn()
    print("Q7116220Trigger03 - PreTriggerIn")
end

function Q7116220Trigger03:LightUpTriggerIn()
    print("Q7116220Trigger03 - LightUpTriggerIn")
end

function Q7116220Trigger03:TriggerOut()
    print("Q7116220Trigger03 - TriggerOut")
end

return Q7116220Trigger03
