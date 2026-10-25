require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602201Trigger = class("Q602201Trigger", GadgetActorProxy)
Q602201Trigger.defaultAlias = "Q602201Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602201Trigger:OnPostDataPrepare()
    print("Q602201Trigger - OnPostDataPrepare")
    this = self
end

function Q602201Trigger:OnPostComponentPrepare()
    print("Q602201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602201Trigger:TriggerIn()
    print("Q602201Trigger - TriggerIn")
    actorUtils.HandleQuestLoadingCtxOpForLua("SaveBlackFadeOut", 1)
end

function Q602201Trigger:PreTriggerIn()
    print("Q602201Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602201)
    actorMgr:GetActor("6022"):SetQuestVarByMainId(0, 1)
    this:DestroySelf()
end

function Q602201Trigger:LightUpTriggerIn()
    print("Q602201Trigger - LightUpTriggerIn")
end

function Q602201Trigger:TriggerOut()
    print("Q602201Trigger - TriggerOut")
end

return Q602201Trigger
