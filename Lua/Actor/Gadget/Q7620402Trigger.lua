require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620402Trigger = class("Q7620402Trigger", GadgetActorProxy)
Q7620402Trigger.defaultAlias = "Q7620402Trigger"
local Q76204ClientConfig = require("Quest/Client/Q76204ClientConfig")

local this
local subIDs = Q76204ClientConfig.SubIDs
local datas = Q76204ClientConfig.Datas
local npcs = Q76204ClientConfig.Npcs
local points = Q76204ClientConfig.Points

function Q7620402Trigger:OnPostDataPrepare()
    print("Q7620402Trigger - OnPostDataPrepare")
    this = self
end

function Q7620402Trigger:OnPostComponentPrepare()
    print("Q7620402Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(12, 5, 5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76204)
end

function Q7620402Trigger:TriggerIn()
    print("Q7620402Trigger - TriggerIn")
    actorMgr:GetActor("76204"):CreateNoBlackTalkTriggerWithNpc("Q7620402Talknoblack", 7620402, 0, npcs.Npc16600.id, 0, 30, 7620402, datas.NoBlackData7620402)
    this:DestroySelf()
end

function Q7620402Trigger:PreTriggerIn()
    print("Q7620402Trigger - PreTriggerIn")
end

function Q7620402Trigger:LightUpTriggerIn()
    print("Q7620402Trigger - LightUpTriggerIn")
end

function Q7620402Trigger:TriggerOut()
    print("Q7620402Trigger - TriggerOut")
end

return Q7620402Trigger
