require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q466trigger1 = class("Q466trigger1", GadgetActorProxy)
Q466trigger1.defaultAlias = "Q466trigger1"
local Q466ClientConfig = require("Quest/Client/Q466ClientConfig")

function Q466trigger1:OnPostDataPrepare() end

function Q466trigger1:OnPostComponentPrepare()
    self:AddComponentTrigger(95, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q466trigger1:TriggerIn() end

function Q466trigger1:TriggerOut(arg1)
    print("Out Q466trigger1")
    if arg1 ~= 1009 then
        actorUtils.ShowTextMapWithParam("QUEST_Message_Q46401")
        local actor = actorMgr:GetActor(Q466ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(true, nil)
        end
    end
end

return Q466trigger1
