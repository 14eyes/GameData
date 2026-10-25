require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710410Trigger_5 = class("Q7710410Trigger_5", GadgetActorProxy)
Q7710410Trigger_5.defaultAlias = "Q7710410Trigger_5"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710410Trigger_5:OnPostDataPrepare()
    print("Q7710410Trigger_5 - OnPostDataPrepare")
    this = self
end

function Q7710410Trigger_5:OnPostComponentPrepare()
    print("Q7710410Trigger_5 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(38, 5, 40, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710410Trigger_5:TriggerIn()
    print("Q7710410Trigger_5 - TriggerIn")
    actorMgr:GetActor("77104"):RequestInteraction(npcs.Npc22800.alias, "", true)
end

function Q7710410Trigger_5:PreTriggerIn()
    print("Q7710410Trigger_5 - PreTriggerIn")
end

function Q7710410Trigger_5:LightUpTriggerIn()
    print("Q7710410Trigger_5 - LightUpTriggerIn")
end

function Q7710410Trigger_5:TriggerOut()
    print("Q7710410Trigger_5 - TriggerOut")
end

return Q7710410Trigger_5
