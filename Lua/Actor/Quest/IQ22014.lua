require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22014 = class("Quest22014", QuestActorProxy)
Quest22014.defaultAlias = "Quest22014"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22014:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2201401"] = self.OnSubStart2201401,
        ["2201402"] = self.OnSubStart2201402,
        ["2201403"] = self.OnSubStart2201403,
        ["2201404"] = self.OnSubStart2201404,
        ["2201405"] = self.OnSubStart2201405,
        ["2201406"] = self.OnSubStart2201406,
        ["2201407"] = self.OnSubStart2201407,
        ["2201408"] = self.OnSubStart2201408,
        ["2201409"] = self.OnSubStart2201409
    }
end

function Quest22014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2201401"] = self.OnSubFinish2201401,
        ["2201402"] = self.OnSubFinish2201402,
        ["2201403"] = self.OnSubFinish2201403,
        ["2201404"] = self.OnSubFinish2201404,
        ["2201405"] = self.OnSubFinish2201405,
        ["2201406"] = self.OnSubFinish2201406,
        ["2201407"] = self.OnSubFinish2201407,
        ["2201408"] = self.OnSubFinish2201408,
        ["2201409"] = self.OnSubFinish2201409
    }
end

function Quest22014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2201401"] = self.OnSubFailed2201401,
        ["2201402"] = self.OnSubFailed2201402,
        ["2201403"] = self.OnSubFailed2201403,
        ["2201404"] = self.OnSubFailed2201404,
        ["2201405"] = self.OnSubFailed2201405,
        ["2201406"] = self.OnSubFailed2201406,
        ["2201407"] = self.OnSubFailed2201407,
        ["2201408"] = self.OnSubFailed2201408,
        ["2201409"] = self.OnSubFailed2201409
    }
end

function Quest22014:Start()
    print("Start")
end

function Quest22014:OnDestroy()
    print("OnDestroy")
end

function Quest22014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22014:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20268Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
end

function Quest22014:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22014:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("\228\186\164\228\186\146\230\157\165\229\136\176\231\172\172\228\184\128\230\174\181\233\187\145\229\177\143")
        self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "QUEST_Message_Q2201401")
    elseif arg1 == 2 then
        print("\228\186\164\228\186\146\230\157\165\229\136\176\231\172\172\228\186\140\230\174\181\233\187\145\229\177\143")
        self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "QUEST_Message_Q2201402")
    elseif arg1 == 3 then
        print("\228\186\164\228\186\146\230\157\165\229\136\176\231\172\172\228\184\137\230\174\181\233\187\145\229\177\143")
        self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "QUEST_Message_Q2201403")
    end
end

function Quest22014:OnSubStart2201401(arg1)
    print("OnSubStart2201401")
    self:CreateQuestNpc(arg1, npcs.Npc20268Data.id, 1)
end

function Quest22014:OnSubFinish2201401(arg1)
    print("OnSubFinish2201401")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest22014:OnSubFailed2201401(arg1)
    print("OnSubFailed2201401")
end

function Quest22014:OnSubStart2201402(arg1)
    print("OnSubStart2201402")
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc2045Data.id, 1)
end

function Quest22014:OnSubFinish2201402(arg1)
    print("OnSubFinish2201402")
end

function Quest22014:OnSubFailed2201402(arg1)
    print("OnSubFailed2201402")
end

function Quest22014:OnSubStart2201403(arg1)
    print("OnSubStart2201403")
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
end

function Quest22014:OnSubFinish2201403(arg1)
    print("OnSubFinish2201403")
end

function Quest22014:OnSubFailed2201403(arg1)
    print("OnSubFailed2201403")
end

function Quest22014:OnSubStart2201404(arg1)
    print("OnSubStart2201404")
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
end

function Quest22014:OnSubFinish2201404(arg1)
    print("OnSubFinish2201404")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2045Data.alias)
end

function Quest22014:OnSubFailed2201404(arg1)
    print("OnSubFailed2201404")
end

function Quest22014:OnSubStart2201405(arg1)
    print("OnSubStart2201405")
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
end

function Quest22014:OnSubFinish2201405(arg1)
    print("OnSubFinish2201405")
end

function Quest22014:OnSubFailed2201405(arg1)
    print("OnSubFailed2201405")
end

function Quest22014:OnSubStart2201406(arg1)
    print("OnSubStart2201406")
    self:CreateQuestNpc(arg1, npcs.XianglingData.id, 1)
    self:GetQuestNpcActor(npcs.XianglingData.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest22014:OnSubFinish2201406(arg1)
    print("OnSubFinish2201406")
    self:NpcDestroyWithBlackscreen(3, npcs.XianglingData.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc2045Data.alias)
end

function Quest22014:OnSubFailed2201406(arg1)
    print("OnSubFailed2201406")
end

function Quest22014:OnSubStart2201407(arg1)
    print("OnSubStart2201407")
    self:NotifyTo(npcs.Npc20268Data.alias, 1, true)
    self:FinishQuestID(true, 2201403)
end

function Quest22014:OnSubFinish2201407(arg1)
    print("OnSubFinish2201407")
end

function Quest22014:OnSubFailed2201407(arg1)
    print("OnSubFailed2201407")
end

function Quest22014:OnSubStart2201408(arg1)
    print("OnSubStart2201408")
end

function Quest22014:OnSubFinish2201408(arg1)
    print("OnSubFinish2201408")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20268Data.alias)
end

function Quest22014:OnSubFailed2201408(arg1)
    print("OnSubFailed2201408")
end

function Quest22014:OnSubStart2201409(arg1)
    print("OnSubStart2201409")
end

function Quest22014:OnSubFinish2201409(arg1)
    print("OnSubFinish2201409")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20268Data.alias)
end

function Quest22014:OnSubFailed2201409(arg1)
    print("OnSubFailed2201409")
end

return Quest22014
