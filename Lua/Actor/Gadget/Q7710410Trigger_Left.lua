require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710410Trigger_Left = class("Q7710410Trigger_Left", GadgetActorProxy)
Q7710410Trigger_Left.defaultAlias = "Q7710410Trigger_Left"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710410Trigger_Left:OnPostDataPrepare()
    print("Q7710410Trigger_Left - OnPostDataPrepare")
    this = self
end

function Q7710410Trigger_Left:OnPostComponentPrepare()
    print("Q7710410Trigger_Left - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(9, 8, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710410Trigger_Left:TriggerIn()
    print("Q7710410Trigger_Left - TriggerIn")
    actorMgr:GetActor("77104"):RequestInteraction(npcs.Npc22708.alias, "", true)
end

function Q7710410Trigger_Left:PreTriggerIn()
    print("Q7710410Trigger_Left - PreTriggerIn")
end

function Q7710410Trigger_Left:LightUpTriggerIn()
    print("Q7710410Trigger_Left - LightUpTriggerIn")
end

function Q7710410Trigger_Left:TriggerOut()
    print("Q7710410Trigger_Left - TriggerOut")
end

return Q7710410Trigger_Left
