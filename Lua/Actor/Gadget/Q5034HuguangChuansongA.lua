require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5034HuguangChuansongA = class("Q5034HuguangChuansongA", GadgetActorProxy)
Q5034HuguangChuansongA.defaultAlias = "Q5034HuguangChuansongA"
local Q5034ClientConfig = require("Quest/Client/Q5034ClientConfig")

local this
local subIDs = Q5034ClientConfig.SubIDs
local datas = Q5034ClientConfig.Datas
local npcs = Q5034ClientConfig.Npcs
local points = Q5034ClientConfig.Points

function Q5034HuguangChuansongA:OnPostDataPrepare()
    print("Q5034HuguangChuansongA - OnPostDataPrepare")
    this = self
end

function Q5034HuguangChuansongA:OnPostComponentPrepare()
    print("Q5034HuguangChuansongA - OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5034)
end

function Q5034HuguangChuansongA:TriggerIn()
    print("Q5034HuguangChuansongA - TriggerIn")
    actorMgr:GetActor("5034"):TransmitPlayerUseCustomizedTplByQuestId(503404, 1, 49, true, 10003, 0, 12, 0)
    actorMgr:GetActor("5034"):CallDelayByQuest("50341001", 1, function(arg1)
        globalActor:ChangeDay24TimeClock(18, 0, 2, true)
        this:DestroySelf()
    end)
end

function Q5034HuguangChuansongA:PreTriggerIn()
    print("Q5034HuguangChuansongA - PreTriggerIn")
end

function Q5034HuguangChuansongA:LightUpTriggerIn()
    print("Q5034HuguangChuansongA - LightUpTriggerIn")
end

function Q5034HuguangChuansongA:TriggerOut()
    print("Q5034HuguangChuansongA - TriggerOut")
end

return Q5034HuguangChuansongA
