require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4002 = class("Quest4002", QuestActorProxy)
Quest4002.defaultAlias = "Quest4002"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4002:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4002:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["400223"] = self.OnSubStart400223,
        ["400201"] = self.OnSubStart400201,
        ["400202"] = self.OnSubStart400202,
        ["400203"] = self.OnSubStart400203,
        ["400204"] = self.OnSubStart400204,
        ["400220"] = self.OnSubStart400220,
        ["400205"] = self.OnSubStart400205,
        ["400206"] = self.OnSubStart400206,
        ["400207"] = self.OnSubStart400207,
        ["400214"] = self.OnSubStart400214,
        ["400215"] = self.OnSubStart400215,
        ["400216"] = self.OnSubStart400216,
        ["400208"] = self.OnSubStart400208,
        ["400217"] = self.OnSubStart400217,
        ["400209"] = self.OnSubStart400209,
        ["400210"] = self.OnSubStart400210,
        ["400211"] = self.OnSubStart400211,
        ["400212"] = self.OnSubStart400212,
        ["400225"] = self.OnSubStart400225,
        ["400213"] = self.OnSubStart400213,
        ["400224"] = self.OnSubStart400224,
        ["400221"] = self.OnSubStart400221,
        ["400222"] = self.OnSubStart400222
    }
end

function Quest4002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["400223"] = self.OnSubFinish400223,
        ["400201"] = self.OnSubFinish400201,
        ["400202"] = self.OnSubFinish400202,
        ["400203"] = self.OnSubFinish400203,
        ["400204"] = self.OnSubFinish400204,
        ["400220"] = self.OnSubFinish400220,
        ["400205"] = self.OnSubFinish400205,
        ["400206"] = self.OnSubFinish400206,
        ["400207"] = self.OnSubFinish400207,
        ["400214"] = self.OnSubFinish400214,
        ["400215"] = self.OnSubFinish400215,
        ["400216"] = self.OnSubFinish400216,
        ["400208"] = self.OnSubFinish400208,
        ["400217"] = self.OnSubFinish400217,
        ["400209"] = self.OnSubFinish400209,
        ["400210"] = self.OnSubFinish400210,
        ["400211"] = self.OnSubFinish400211,
        ["400212"] = self.OnSubFinish400212,
        ["400225"] = self.OnSubFinish400225,
        ["400213"] = self.OnSubFinish400213,
        ["400224"] = self.OnSubFinish400224,
        ["400221"] = self.OnSubFinish400221,
        ["400222"] = self.OnSubFinish400222
    }
end

function Quest4002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4002:Start()
    print("Start")
end

function Quest4002:OnDestroy()
    print("OnDestroy")
end

function Quest4002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4002:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4002:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest4002:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest4002:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest4002:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest4002:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest4002:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
    end)
end

function Quest4002:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 400224)
    elseif arg1 == 0 then
        this:ActorDestroy("Q400208_ReconnectTrigger")
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 400225)
    end
end

function Quest4002:OnSubStart400223(arg1)
    print("OnSubStart400223")
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    if this:GetQuestVar(400223, 1) == 0 then
        this:NarratorOnlyTaskByData(datas.Narrator_400203, function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end, 4002)
    end
end

function Quest4002:OnSubFinish400223(arg1)
    print("OnSubFinish400223")
end

function Quest4002:OnSubStart400201(arg1)
    print("OnSubStart400201")
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q400201_Trigger", "Actor/Gadget/Q400201_Trigger", 70900002, 0, points.TPos_Q400201_Trigger.pos, points.TPos_Q400201_Trigger.rot, true, false, 3)
    if this:GetQuestVar(400201, 0) == 0 then
        this:ActionSafeCall(function(arg1_2)
            this:LevelLoadFinishSafeCall(function(arg1_2)
                this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TransmitBlank, 1, nil, function(arg1)
                    this:SetQuestVar(400201, 0, 1)
                end)
            end)
        end)

        actorMgr:CreateActorWithPos("Q400201_TransNarratorTrigger", "Actor/Gadget/Q400201_TransNarratorTrigger", 70900002, 0, points.TPos_Q400201_TransNarratorTrigger.pos, points.TPos_Q400201_TransNarratorTrigger.rot, true, false, 3)
    end
end

function Quest4002:OnSubFinish400201(arg1)
    print("OnSubFinish400201")
    this:ActorDestroy("Q400201_TransNarratorTrigger")
end

function Quest4002:OnSubStart400202(arg1)
    print("OnSubStart400202")
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q400202_Trigger", "Actor/Gadget/Q400202_Trigger", 70900002, 0, {x = 3533.769, y = 382.106, z = 4251.249}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest4002:OnSubFinish400202(arg1)
    print("OnSubFinish400202")
    this:EnterSceneLookCamera({x = 3532.998, y = 388.01, z = 4233.08}, 0, 2, true, false)
end

function Quest4002:OnSubStart400203(arg1)
    print("OnSubStart400203")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(npcs.Npc13320Data.id, 400203, 0, 20, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4002:OnSubFinish400203(arg1)
    print("OnSubFinish400203")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TransmitToOpera, 1, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc13320Data.alias, 3)
end

function Quest4002:OnSubStart400204(arg1)
    print("OnSubStart400204")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1075Data.id, 400204, 0, 50, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4002:OnSubFinish400204(arg1)
    print("OnSubFinish400204")
    this:NPCDestroyImmediately(npcs.Npc1075Data.alias, 1085)
    this:NPCDestroyImmediately(npcs.Npc1076Data.alias, 1085)
    this:NPCDestroyImmediately(npcs.Npc13316Data.alias, 1085)
    this:NPCDestroyImmediately(npcs.Npc13309Data.alias, 1085)
    this:NPCDestroyImmediately(npcs.Npc13315Data.alias, 1085)
    globalActor:PlayerEnterDungeon(967, 1181, true, datas.TextmapEnterDungeon, 1)
end

function Quest4002:OnSubStart400220(arg1)
    print("OnSubStart400220")
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    this:ActorDestroy("Q400205_Trigger")
    this:ActorDestroy("Q400206N13320Trigger")
    this:ActorDestroy("Q400214N13320Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc13410Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13411Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13412Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13413Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13414Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13423Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13424Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13425Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13426Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13427Data.alias, 20186)
end

function Quest4002:OnSubFinish400220(arg1)
    print("OnSubFinish400220")
end

function Quest4002:OnSubStart400205(arg1)
    print("OnSubStart400205")
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q400205_Trigger", "Actor/Gadget/Q400205_Trigger", 70900002, 0, {x = 153.651, y = 1.84, z = 202.204}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20186)
end

function Quest4002:OnSubFinish400205(arg1)
    print("OnSubFinish400205")
end

function Quest4002:OnSubStart400206(arg1)
    print("OnSubStart400206")
    this:NpcCreateWithNpcTrigger(npcs.Npc13320Data.id, 400206, 0, 40)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4002:OnSubFinish400206(arg1)
    print("OnSubFinish400206")
    this:SafeDestroyQuestNpc(npcs.Npc13320Data.alias, 20186)
end

function Quest4002:OnSubStart400207(arg1)
    print("OnSubStart400207")
    this:CreateQuestNpc(arg1, npcs.Npc13410Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13411Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13412Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13413Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13414Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4002:OnSubFinish400207(arg1)
    print("OnSubFinish400207")
    this:SafeDestroyQuestNpc(npcs.Npc13410Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13411Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13412Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13413Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13414Data.alias, 20186)
end

function Quest4002:OnSubStart400214(arg1)
    print("OnSubStart400214")
    this:NpcCreateWithNpcTrigger(npcs.Npc13320Data.id, 400214, 0, 20)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4002:OnSubFinish400214(arg1)
    print("OnSubFinish400214")
    this:SafeDestroyQuestNpc(npcs.Npc13320Data.alias, 20186)
end

function Quest4002:OnSubStart400215(arg1)
    print("OnSubStart400215")
    this:CreateQuestNpc(arg1, npcs.Npc13423Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13424Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13425Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13426Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13427Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4002:OnSubFinish400215(arg1)
    print("OnSubFinish400215")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TransmitToOpera2, 1, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc13423Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13424Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13425Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13426Data.alias, 20186)
    this:SafeDestroyQuestNpc(npcs.Npc13427Data.alias, 20186)
end

function Quest4002:OnSubStart400216(arg1)
    print("OnSubStart400216")
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4002:OnSubFinish400216(arg1)
    print("OnSubFinish400216")
end

function Quest4002:OnSubStart400208(arg1)
    print("OnSubStart400208")
    this:NpcCreateWithNpcTrigger(npcs.Npc1075Data.id, 400208, 0, 50)
    this:CreateQuestNpc(arg1, npcs.Npc13309Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q400208_ReconnectTrigger", "Actor/Gadget/Q400208_ReconnectTrigger", 70900002, 0, {x = -21.95, y = 50.488, z = 135.279}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1085)
end

function Quest4002:OnSubFinish400208(arg1)
    print("OnSubFinish400208")
    this:ActorDestroy("Q400208_ReconnectTrigger")
    this:NPCDestroyImmediately(npcs.Npc1075Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13309Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13315Data.alias, 1085)
    this:ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Quest4002:OnSubStart400217(arg1)
    print("OnSubStart400217")
    this:NpcCreateWithNpcTrigger(npcs.Npc1076Data.id, 400217, 0, 40)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4002:OnSubFinish400217(arg1)
    print("OnSubFinish400217")
    this:SafeDestroyQuestNpc(npcs.Npc13316Data.alias, 1085)
end

function Quest4002:OnSubStart400209(arg1)
    print("OnSubStart400209")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1076Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q400209_Trigger", "Actor/Gadget/Q400209_Trigger", 70900002, 0, points.TPos_Q400209_Trigger.pos, points.TPos_Q400209_Trigger.rot, true, false, 1085)
end

function Quest4002:OnSubFinish400209(arg1)
    print("OnSubFinish400209")
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13315Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13365Data.alias, 1085)
end

function Quest4002:OnSubStart400210(arg1)
    print("OnSubStart400210")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13315Data.id, 400210, 0, 10, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q400211_ReconnectTrigger", "Actor/Gadget/Q400211_ReconnectTrigger", 70900002, 0, {x = 3460.589, y = 496.458, z = 3674.582}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest4002:OnSubFinish400210(arg1)
    print("OnSubFinish400210")
    this:TransmitPlayerById(arg1, 1)
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 3)
end

function Quest4002:OnSubStart400211(arg1)
    print("OnSubStart400211")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13314Data.id, 400211, 0, 10, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5100Data.alias, 1, true)
end

function Quest4002:OnSubFinish400211(arg1)
    print("OnSubFinish400211")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TransmitToCity, 3, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc13315Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13314Data.alias, 3)
    this:ActorDestroy("Q400211_ReconnectTrigger")
end

function Quest4002:OnSubStart400212(arg1)
    print("OnSubStart400212")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1075Data.id, 400212, 0, 10, 1)
    this:LightNotifyTo(npcs.Npc5100Data.alias, 0, true)
end

function Quest4002:OnSubFinish400212(arg1)
    print("OnSubFinish400212")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.TransmitBlank, 1, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13311Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13312Data.alias, 3)
end

function Quest4002:OnSubStart400225(arg1)
    print("OnSubStart400225")
end

function Quest4002:OnSubFinish400225(arg1)
    print("OnSubFinish400225")
end

function Quest4002:OnSubStart400213(arg1)
    print("OnSubStart400213")
    this:NpcCreateWithNpcTrigger(npcs.Npc1076Data.id, 400213, 0, 20)
end

function Quest4002:OnSubFinish400213(arg1)
    print("OnSubFinish400213")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 3)
end

function Quest4002:OnSubStart400224(arg1)
    print("OnSubStart400224")
end

function Quest4002:OnSubFinish400224(arg1)
    print("OnSubFinish400224")
end

function Quest4002:OnSubStart400221(arg1)
    print("OnSubStart400221")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1075Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1076Data.id, 0)
end

function Quest4002:OnSubFinish400221(arg1)
    print("OnSubFinish400221")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 3)
end

function Quest4002:OnSubStart400222(arg1)
    print("OnSubStart400222")
end

function Quest4002:OnSubFinish400222(arg1)
    print("OnSubFinish400222")
end

return Quest4002
