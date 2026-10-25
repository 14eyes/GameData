require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q466trigger2 = class("Q466trigger2", GadgetActorProxy)
Q466trigger2.defaultAlias = "Q466trigger2"
local Q466ClientConfig = require("Quest/Client/Q466ClientConfig")

function Q466trigger2:OnPostDataPrepare() end

function Q466trigger2:OnPostComponentPrepare()
    self:AddComponentTrigger(185, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q466trigger2:TriggerIn() end

function Q466trigger2:TriggerOut(arg1)
    print("Out Q466trigger2")
    if arg1 ~= 1009 then
        actorUtils.ShowTextMapWithParam("QUEST_Message_Q46401")
        local actor = actorMgr:GetActor(Q466ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(true, nil)
        end
    end
end

return Q466trigger2
