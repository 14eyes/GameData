require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710410Trigger_Right = class("Q7710410Trigger_Right", GadgetActorProxy)
Q7710410Trigger_Right.defaultAlias = "Q7710410Trigger_Right"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710410Trigger_Right:OnPostDataPrepare()
    print("Q7710410Trigger_Right - OnPostDataPrepare")
    this = self
end

function Q7710410Trigger_Right:OnPostComponentPrepare()
    print("Q7710410Trigger_Right - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(9, 10, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710410Trigger_Right:TriggerIn()
    print("Q7710410Trigger_Right - TriggerIn")
    actorMgr:GetActor("77104"):RequestInteraction(npcs.Npc22709.alias, "", true)
end

function Q7710410Trigger_Right:PreTriggerIn()
    print("Q7710410Trigger_Right - PreTriggerIn")
end

function Q7710410Trigger_Right:LightUpTriggerIn()
    print("Q7710410Trigger_Right - LightUpTriggerIn")
end

function Q7710410Trigger_Right:TriggerOut()
    print("Q7710410Trigger_Right - TriggerOut")
end

return Q7710410Trigger_Right
