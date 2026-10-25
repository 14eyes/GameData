require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5034HuguangChuansongB = class("Q5034HuguangChuansongB", GadgetActorProxy)
Q5034HuguangChuansongB.defaultAlias = "Q5034HuguangChuansongB"
local Q5034ClientConfig = require("Quest/Client/Q5034ClientConfig")

local this
local subIDs = Q5034ClientConfig.SubIDs
local datas = Q5034ClientConfig.Datas
local npcs = Q5034ClientConfig.Npcs
local points = Q5034ClientConfig.Points

function Q5034HuguangChuansongB:OnPostDataPrepare()
    print("Q5034HuguangChuansongB - OnPostDataPrepare")
    this = self
end

function Q5034HuguangChuansongB:OnPostComponentPrepare()
    print("Q5034HuguangChuansongB - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5034)
end

function Q5034HuguangChuansongB:TriggerIn()
    print("Q5034HuguangChuansongB - TriggerIn")
    actorMgr:GetActor("5034"):TransmitPlayerUseCustomizedTplByQuestId(503404, 2, 49, true, 10002, 0, 12, 0)
    this:DestroySelf()
end

function Q5034HuguangChuansongB:PreTriggerIn()
    print("Q5034HuguangChuansongB - PreTriggerIn")
end

function Q5034HuguangChuansongB:LightUpTriggerIn()
    print("Q5034HuguangChuansongB - LightUpTriggerIn")
end

function Q5034HuguangChuansongB:TriggerOut()
    print("Q5034HuguangChuansongB - TriggerOut")
end

return Q5034HuguangChuansongB
