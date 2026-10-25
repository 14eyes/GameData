require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402909_BlackTrigger = class("Q1402909_BlackTrigger", GadgetActorProxy)
Q1402909_BlackTrigger.defaultAlias = "Q1402909_BlackTrigger"
local Q14029ClientConfig = require("Quest/Client/Q14029ClientConfig")

local this
local subIDs = Q14029ClientConfig.SubIDs
local datas = Q14029ClientConfig.Datas
local npcs = Q14029ClientConfig.Npcs
local points = Q14029ClientConfig.Points

function Q1402909_BlackTrigger:OnPostDataPrepare()
    print("Q1402909_BlackTrigger - OnPostDataPrepare")
    this = self
end

function Q1402909_BlackTrigger:OnPostComponentPrepare()
    print("Q1402909_BlackTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14029)
end

function Q1402909_BlackTrigger:TriggerIn()
    print("Q1402909_BlackTrigger - TriggerIn")
    this:DestroySelf()
end

function Q1402909_BlackTrigger:PreTriggerIn()
    print("Q1402909_BlackTrigger - PreTriggerIn")
end

function Q1402909_BlackTrigger:LightUpTriggerIn()
    print("Q1402909_BlackTrigger - LightUpTriggerIn")
    actorMgr:GetActor("14029"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Q1402909_BlackTrigger:TriggerOut()
    print("Q1402909_BlackTrigger - TriggerOut")
end

return Q1402909_BlackTrigger
