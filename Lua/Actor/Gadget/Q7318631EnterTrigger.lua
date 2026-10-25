require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7318631EnterTrigger = class("Q7318631EnterTrigger", GadgetActorProxy)
Q7318631EnterTrigger.defaultAlias = "Q7318631EnterTrigger"
local Q73186ClientConfig = require("Quest/Client/Q73186ClientConfig")

local this
local subIDs = Q73186ClientConfig.SubIDs
local npcs = Q73186ClientConfig.Npcs
local datas = Q73186ClientConfig.Datas

function Q7318631EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7318631EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7318631EnterTrigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73186")
    actor:EnterSceneLookCamera({x = -945.095, y = -144.051, z = 4889.008}, 0, 4, true, false)
    actor:NarratorOnlyTaskByData(datas.Rmd_31Piece)
    this:DestroySelf()
end

function Q7318631EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7318631EnterTrigger
