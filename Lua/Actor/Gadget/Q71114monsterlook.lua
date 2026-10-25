require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71114monsterlook = class("Q71114monsterlook", GadgetActorProxy)
Q71114monsterlook.defaultAlias = "Q71114monsterlook"
local Q71114ClientConfig = require("Quest/Client/Q71114ClientConfig")

local this
local subIDs = Q71114ClientConfig.SubIDs
local datas = Q71114ClientConfig.Datas
local npcs = Q71114ClientConfig.Npcs
local points = Q71114ClientConfig.Points

function Q71114monsterlook:OnPostDataPrepare()
    print("Q71114monsterlook - OnPostDataPrepare")
    this = self
end

function Q71114monsterlook:OnPostComponentPrepare()
    print("Q71114monsterlook - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71114)
end

function Q71114monsterlook:TriggerIn()
    print("Q71114monsterlook - TriggerIn")
    actorMgr:GetActor("71114"):QuestNarratorTask(datas.Q7111406narrator, nil)
    this:DestroySelf()
end

function Q71114monsterlook:PreTriggerIn()
    print("Q71114monsterlook - PreTriggerIn")
end

function Q71114monsterlook:LightUpTriggerIn()
    print("Q71114monsterlook - LightUpTriggerIn")
end

function Q71114monsterlook:TriggerOut()
    print("Q71114monsterlook - TriggerOut")
end

return Q71114monsterlook
