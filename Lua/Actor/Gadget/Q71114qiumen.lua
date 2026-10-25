require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71114qiumen = class("Q71114qiumen", GadgetActorProxy)
Q71114qiumen.defaultAlias = "Q71114qiumen"
local Q71114ClientConfig = require("Quest/Client/Q71114ClientConfig")

local this
local subIDs = Q71114ClientConfig.SubIDs
local datas = Q71114ClientConfig.Datas
local npcs = Q71114ClientConfig.Npcs
local points = Q71114ClientConfig.Points

function Q71114qiumen:OnPostDataPrepare()
    print("Q71114qiumen - OnPostDataPrepare")
    this = self
end

function Q71114qiumen:OnPostComponentPrepare()
    print("Q71114qiumen - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71114)
end

function Q71114qiumen:TriggerIn()
    print("Q71114qiumen - TriggerIn")
    actorMgr:GetActor("71114"):NarratorOnlyTaskByData(datas.Q7111407narrator, nil, 71114)
    this:DestroySelf()
end

function Q71114qiumen:PreTriggerIn()
    print("Q71114qiumen - PreTriggerIn")
end

function Q71114qiumen:LightUpTriggerIn()
    print("Q71114qiumen - LightUpTriggerIn")
end

function Q71114qiumen:TriggerOut()
    print("Q71114qiumen - TriggerOut")
end

return Q71114qiumen
