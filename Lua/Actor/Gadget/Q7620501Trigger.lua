require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620501Trigger = class("Q7620501Trigger", GadgetActorProxy)
Q7620501Trigger.defaultAlias = "Q7620501Trigger"
local Q76205ClientConfig = require("Quest/Client/Q76205ClientConfig")

local this
local subIDs = Q76205ClientConfig.SubIDs
local datas = Q76205ClientConfig.Datas
local npcs = Q76205ClientConfig.Npcs
local points = Q76205ClientConfig.Points

function Q7620501Trigger:OnPostDataPrepare()
    print("Q7620501Trigger - OnPostDataPrepare")
    this = self
end

function Q7620501Trigger:OnPostComponentPrepare()
    print("Q7620501Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(28, 10, 3.5, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76205)
end

function Q7620501Trigger:TriggerIn()
    print("Q7620501Trigger - TriggerIn")
    actorMgr:GetActor("76205"):CreateNoBlackTalkTriggerWithNpc("Q7620501Talknoblack", 7620501, 0, npcs.Npc1322_1.id, 0, 30, 7620501, datas.NoBlackData7620501)
    this:DestroySelf()
end

function Q7620501Trigger:PreTriggerIn()
    print("Q7620501Trigger - PreTriggerIn")
end

function Q7620501Trigger:LightUpTriggerIn()
    print("Q7620501Trigger - LightUpTriggerIn")
end

function Q7620501Trigger:TriggerOut()
    print("Q7620501Trigger - TriggerOut")
end

return Q7620501Trigger
