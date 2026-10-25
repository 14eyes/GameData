require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111405finishquest = class("Q7111405finishquest", GadgetActorProxy)
Q7111405finishquest.defaultAlias = "Q7111405finishquest"
local Q71114ClientConfig = require("Quest/Client/Q71114ClientConfig")

local this
local subIDs = Q71114ClientConfig.SubIDs
local datas = Q71114ClientConfig.Datas
local npcs = Q71114ClientConfig.Npcs
local points = Q71114ClientConfig.Points

function Q7111405finishquest:OnPostDataPrepare()
    print("Q7111405finishquest - OnPostDataPrepare")
    this = self
end

function Q7111405finishquest:OnPostComponentPrepare()
    print("Q7111405finishquest - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71114)
end

function Q7111405finishquest:TriggerIn()
    print("Q7111405finishquest - TriggerIn")
    actorUtils.FinishQuestID(false, 7111405)
    this:DestroySelf()
end

function Q7111405finishquest:PreTriggerIn()
    print("Q7111405finishquest - PreTriggerIn")
end

function Q7111405finishquest:LightUpTriggerIn()
    print("Q7111405finishquest - LightUpTriggerIn")
end

function Q7111405finishquest:TriggerOut()
    print("Q7111405finishquest - TriggerOut")
end

return Q7111405finishquest
