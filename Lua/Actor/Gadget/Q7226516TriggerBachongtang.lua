require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7226516TriggerBachongtang = class("Q7226516TriggerBachongtang", GadgetActorProxy)
Q7226516TriggerBachongtang.defaultAlias = "Q7226516TriggerBachongtang"
local Q72265ClientConfig = require("Quest/Client/Q72265ClientConfig")

local subIDs = Q72265ClientConfig.SubIDs
local npcs = Q72265ClientConfig.Npcs
local datas = Q72265ClientConfig.Datas

function Q7226516TriggerBachongtang:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7226516TriggerBachongtang:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7226516TriggerBachongtang:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72265"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("72265"):TransmitPlayerByQuestId(7226516, 2)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q7226516TriggerBachongtang:TriggerOut()
    print("TriggerOut")
end

return Q7226516TriggerBachongtang
