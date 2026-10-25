require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7422804_TalkTrigger = class("Q7422804_TalkTrigger", GadgetActorProxy)
Q7422804_TalkTrigger.defaultAlias = "Q7422804_TalkTrigger"
local Q74228ClientConfig = require("Quest/Client/Q74228ClientConfig")

local this
local subIDs = Q74228ClientConfig.SubIDs
local datas = Q74228ClientConfig.Datas
local npcs = Q74228ClientConfig.Npcs
local points = Q74228ClientConfig.Points

function Q7422804_TalkTrigger:OnPostDataPrepare()
    print("Q7422804_TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7422804_TalkTrigger:OnPostComponentPrepare()
    print("Q7422804_TalkTrigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 50, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74228)
end

function Q7422804_TalkTrigger:TriggerIn()
    print("Q7422804_TalkTrigger - TriggerIn")
    actorMgr:GetActor("74228"):CreateNoBlackTalkTriggerWithNpc("Q7422804_NoBlack", 7422804, 1, npcs.Npc16473.id, 0, 35, 7422804, datas.NoBlackData_7422804)
    this:DestroySelf()
end

function Q7422804_TalkTrigger:PreTriggerIn()
    print("Q7422804_TalkTrigger - PreTriggerIn")
end

function Q7422804_TalkTrigger:LightUpTriggerIn()
    print("Q7422804_TalkTrigger - LightUpTriggerIn")
end

function Q7422804_TalkTrigger:TriggerOut()
    print("Q7422804_TalkTrigger - TriggerOut")
end

return Q7422804_TalkTrigger
